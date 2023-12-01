-- CreateTable
CREATE TABLE `Inventory` (
    `barcode` VARCHAR(191) NOT NULL,
    `manufacturer` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `volume` VARCHAR(191) NOT NULL,
    `retail_price` DOUBLE NOT NULL,
    `on_sale` BOOLEAN NOT NULL,
    `sale_price` DOUBLE NULL,
    `description` VARCHAR(191) NULL,

    UNIQUE INDEX `Inventory_barcode_key`(`barcode`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Logos` (
    `logoId` INTEGER NOT NULL AUTO_INCREMENT,
    `imageUrl` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`logoId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
