package me.skunky.custommob;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.client.itemgroup.FabricItemGroupBuilder;
import net.minecraft.item.ItemGroup;
import net.minecraft.item.ItemStack;
import net.minecraft.item.Items;
import net.minecraft.util.Identifier;

import java.util.logging.Logger;

public class CustomMob implements ModInitializer {
    public static final String MOD_ID = "custommob";
    public static final Logger LOG = Logger.getLogger(MOD_ID);
    public static final ItemGroup CUSTOM_MOB = FabricItemGroupBuilder.build(new Identifier(MOD_ID, "custom_mob"), () -> new ItemStack(Items.CREEPER_SPAWN_EGG));

    @Override
    public void onInitialize() {

    }
}
