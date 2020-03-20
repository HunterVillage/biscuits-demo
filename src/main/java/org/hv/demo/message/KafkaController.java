package org.hv.demo.message;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author leyan95
 */
@Controller
@RequestMapping("message")
@RestController
public class KafkaController {
    private final KafkaSender kafkaSender;

    public KafkaController(KafkaSender kafkaSender) {
        this.kafkaSender = kafkaSender;
    }

    @GetMapping("/test")
    public void send() throws JsonProcessingException {
        for (int i = 0; i < 2; i++) {
            kafkaSender.send((long) i);
        }
    }
}
