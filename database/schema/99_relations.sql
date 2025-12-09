-- =========================================
-- LLAVES FORÁNEAS Y RELACIONES
-- =========================================

-- USERS.role_id -> ROLES.id
ALTER TABLE users
ADD CONSTRAINT fk_users_role
FOREIGN KEY (role_id)
REFERENCES roles(id);

-- CATEGORIES.parent_id -> CATEGORIES.id
ALTER TABLE categories
ADD CONSTRAINT fk_categories_parent
FOREIGN KEY (parent_id)
REFERENCES categories(id);

-- PRODUCTS.category_id -> CATEGORIES.id
ALTER TABLE products
ADD CONSTRAINT fk_products_category
FOREIGN KEY (category_id)
REFERENCES categories(id);

-- ORDERS.user_id -> USERS.id
ALTER TABLE orders
ADD CONSTRAINT fk_orders_user
FOREIGN KEY (user_id)
REFERENCES users(id);

-- ORDER_ITEMS.order_id -> ORDERS.id
ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_order
FOREIGN KEY (order_id)
REFERENCES orders(id);

-- ORDER_ITEMS.product_id -> PRODUCTS.id
ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_product
FOREIGN KEY (product_id)
REFERENCES products(id);

-- INVENTORY_MOVEMENTS.product_id -> PRODUCTS.id
ALTER TABLE inventory_movements
ADD CONSTRAINT fk_inventory_product
FOREIGN KEY (product_id)
REFERENCES products(id);

-- INVENTORY_MOVEMENTS.created_by -> USERS.id
ALTER TABLE inventory_movements
ADD CONSTRAINT fk_inventory_user
FOREIGN KEY (created_by)
REFERENCES users(id);

-- REVIEWS.product_id -> PRODUCTS.id
ALTER TABLE reviews
ADD CONSTRAINT fk_reviews_product
FOREIGN KEY (product_id)
REFERENCES products(id);

-- REVIEWS.user_id -> USERS.id
ALTER TABLE reviews
ADD CONSTRAINT fk_reviews_user
FOREIGN KEY (user_id)
REFERENCES users(id);
-- Relaciones / llaves for�neas
-- WISHLIST_ITEMS.user_id -> USERS.id
ALTER TABLE wishlist_items
ADD CONSTRAINT fk_wishlist_user
FOREIGN KEY (user_id)
REFERENCES users(id);

-- WISHLIST_ITEMS.product_id -> PRODUCTS.id
ALTER TABLE wishlist_items
ADD CONSTRAINT fk_wishlist_product
FOREIGN KEY (product_id)
REFERENCES products(id);

-- COUPON_REDEMPTIONS.coupon_id -> COUPONS.id
ALTER TABLE coupon_redeptions
ADD CONSTRAINT fk_redemption_coupon
FOREIGN KEY (coupon_id)
REFERENCES coupons(id);

-- COUPON_REDEMPTIONS.order_id -> ORDERS.id
ALTER TABLE coupon_redeptions
ADD CONSTRAINT fk_redemption_order
FOREIGN KEY (order_id)
REFERENCES orders(id);

-- COUPON_REDEMPTIONS.user_id -> USERS.id
ALTER TABLE coupon_redeptions
ADD CONSTRAINT fk_redemption_user
FOREIGN KEY (user_id)
REFERENCES users(id);

-- CMS_PAGES.created_by -> USERS.id
ALTER TABLE cms_pages
ADD CONSTRAINT fk_cms_created_by
FOREIGN KEY (created_by)
REFERENCES users(id);

-- CMS_PAGES.updated_by -> USERS.id
ALTER TABLE cms_pages
ADD CONSTRAINT fk_cms_updated_by
FOREIGN KEY (updated_by)
REFERENCES users(id);

-- RMA_REQUESTS.order_id -> ORDERS.id
ALTER TABLE rma_requests
ADD CONSTRAINT fk_rma_order
FOREIGN KEY (order_id)
REFERENCES orders(id);

-- RMA_REQUESTS.user_id -> USERS.id
ALTER TABLE rma_requests
ADD CONSTRAINT fk_rma_user
FOREIGN KEY (user_id)
REFERENCES users(id);

-- RMA_REQUESTS.reviewed_by -> USERS.id
ALTER TABLE rma_requests
ADD CONSTRAINT fk_rma_reviewed_by
FOREIGN KEY (reviewed_by)
REFERENCES users(id);

-- NOTIFICATION_PREFERENCES.user_id -> USERS.id
ALTER TABLE notification_preferences
ADD CONSTRAINT fk_notifications_user
FOREIGN KEY (user_id)
REFERENCES users(id);

-- ORDER_SHIPMENTS.order_id -> ORDERS.id
ALTER TABLE order_shipments
ADD CONSTRAINT fk_shipments_order
FOREIGN KEY (order_id)
REFERENCES orders(id);

-- ORDER_SHIPMENTS.shipping_method_id -> SHIPPING_METHODS.id
ALTER TABLE order_shipments
ADD CONSTRAINT fk_shipments_method
FOREIGN KEY (shipping_method_id)
REFERENCES shipping_methods(id);

-- CHATBOT_SESSIONS.user_id -> USERS.id
ALTER TABLE chatbot_sessions
ADD CONSTRAINT fk_chatbot_session_user
FOREIGN KEY (user_id)
REFERENCES users(id);

-- CHATBOT_MESSAGES.session_id -> CHATBOT_SESSIONS.id
ALTER TABLE chatbot_messages
ADD CONSTRAINT fk_chatbot_message_session
FOREIGN KEY (session_id)
REFERENCES chatbot_sessions(id);

-- AUDIT_LOGS.user_id -> USERS.id
ALTER TABLE audit_logs
ADD CONSTRAINT fk_audit_user
FOREIGN KEY (user_id)
REFERENCES users(id);
