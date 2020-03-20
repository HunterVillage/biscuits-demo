package org.hv.demo.message;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.kafka.core.KafkaOperations;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.UUID;

/**
 * @author leyan95
 */
@Component
public class KafkaSender {

    private final KafkaTemplate<String, String> kafkaTemplate;

    private ObjectMapper objectMapper = new ObjectMapper();

    public KafkaSender(KafkaTemplate<String, String> kafkaTemplate) {
        this.kafkaTemplate = kafkaTemplate;
    }

    void send(Long i) throws JsonProcessingException {
        Message message = new Message();
        message.setId(i);
        message.setMsg(UUID.randomUUID().toString());
        message.setSendTime(LocalDate.now());
        System.out.println(String.format("========发送消息  " + i + " >>>>%s<<<<<==========", objectMapper.writeValueAsString(message)));
        kafkaTemplate.send("test", objectMapper.writeValueAsString(message));
        kafkaTemplate.executeInTransaction(kafkaOperations -> {
            kafkaOperations.send("test", "test executeInTransaction");
            return true;
        });
    }
}
