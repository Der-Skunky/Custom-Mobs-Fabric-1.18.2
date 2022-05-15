package me.skunky.custommob.init;

import me.skunky.custommob.CustomMob;
import me.skunky.custommob.entity.RaccoonEntity;
import net.fabricmc.fabric.api.object.builder.v1.entity.FabricEntityTypeBuilder;
import net.minecraft.entity.EntityDimensions;
import net.minecraft.entity.EntityType;
import net.minecraft.entity.SpawnGroup;
import net.minecraft.util.Identifier;
import net.minecraft.util.registry.Registry;


public class initEntities {

    public static final EntityType<RaccoonEntity> RACCOON = Registry.register(Registry.ENTITY_TYPE, new Identifier(CustomMob.MOD_ID, "raccoon"),
            FabricEntityTypeBuilder.create(SpawnGroup.CREATURE, RaccoonEntity::new).dimensions(EntityDimensions.fixed(0.4F, 0.3F)).build());
}
