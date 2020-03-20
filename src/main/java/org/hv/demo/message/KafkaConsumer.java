package org.hv.demo.message;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

import java.util.Optional;

/**
 * @author leyan95
 */
@Component
public class KafkaConsumer {
    @KafkaListener(topics = {"test","test1"})
    public void consumer(ConsumerRecord<?,?> consumerRecord){
        Optional<?> kafkaMessage = Optional.ofNullable(consumerRecord.value());
        System.out.println(">>>>>>>>>> record =" + kafkaMessage);
        if(kafkaMessage.isPresent()){
            Object message = kafkaMessage.get();
            System.out.println(">>>>>>>>接收消息message =" + message);
        }
    }
}
