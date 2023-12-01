-- CreateTable
CREATE TABLE `Inventory` (
    `serial_number` VARCHAR(191) NOT NULL,
    `brand_name` VARCHAR(191) NOT NULL,
    `volume` VARCHAR(191) NOT NULL,
    `retail_price` DOUBLE NOT NULL,
    `on_sale` BOOLEAN NOT NULL,
    `sale_price` DOUBLE NOT NULL,

    UNIQUE INDEX `Inventory_serial_number_key`(`serial_number`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Logos` (
    `logoId` INTEGER NOT NULL AUTO_INCREMENT,
    `imageUrl` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`logoId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
