package me.skunky.custommob.init;

import me.skunky.custommob.CustomMob;
import net.fabricmc.fabric.api.item.v1.FabricItemSettings;
import net.minecraft.item.Item;
import net.minecraft.item.SpawnEggItem;
import net.minecraft.util.Identifier;
import net.minecraft.util.registry.Registry;

public class initItems {


    public static final Item RACCOON_SPAWN_EGG = registerItem("raccoon_spawn_egg",
            new SpawnEggItem(initEntities.RACCOON,0x948e8d, 0x3b3635,
                    new FabricItemSettings().group(CustomMob.CUSTOM_MOB).maxCount(1)));

    private static Item registerItem(String name, Item item) {
        return Registry.register(Registry.ITEM, new Identifier(CustomMob.MOD_ID, name), item);
    }

    public static void init() {
        CustomMob.LOG.info("Registering Items for " + CustomMob.MOD_ID);
    }
}
