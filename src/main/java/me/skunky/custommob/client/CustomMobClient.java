package me.skunky.custommob.client;

import me.skunky.custommob.entity.RaccoonRenderer;
import me.skunky.custommob.init.initEntities;
import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.rendering.v1.EntityRendererRegistry;

public class CustomMobClient implements ClientModInitializer {
    @Override
    public void onInitializeClient() {

        EntityRendererRegistry.register(initEntities.RACCOON, RaccoonRenderer::new);

    }
}
