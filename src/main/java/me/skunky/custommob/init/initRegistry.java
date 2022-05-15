package me.skunky.custommob.init;

import me.skunky.custommob.entity.RaccoonEntity;
import net.fabricmc.fabric.api.object.builder.v1.entity.FabricDefaultAttributeRegistry;

public class initRegistry {

    public static void init() {
        registerAttributes();
    }

    private static void registerAttributes() {
        FabricDefaultAttributeRegistry.register(initEntities.RACCOON, RaccoonEntity.setAttributes());
    }
}
