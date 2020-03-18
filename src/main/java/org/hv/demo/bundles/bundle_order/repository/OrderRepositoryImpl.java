package org.hv.demo.bundles.bundle_order.repository;

import org.hv.demo.bundles.bundle_order.aggregate.Order;
import org.hv.biscuits.repository.AbstractCommonRepository;
import org.springframework.stereotype.Component;

/**
 * @author wujianchuan
 */
@Component
public class OrderRepositoryImpl extends AbstractCommonRepository<Order> implements OrderRepository {
}
