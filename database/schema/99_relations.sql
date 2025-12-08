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
