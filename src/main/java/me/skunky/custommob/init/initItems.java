package me.skunky.custommob.init;

import me.skunky.custommob.CustomMob;
import net.minecraft.item.Item;
import net.minecraft.util.Identifier;
import net.minecraft.util.registry.Registry;

public class initItems {

    private static Item registerItem(String name, Item item) {
        return Registry.register(Registry.ITEM, new Identifier(CustomMob.MOD_ID, name), item);
    }

    public static void init() {
        CustomMob.LOG.info("Registering Items for " + CustomMob.MOD_ID);
    }
}
