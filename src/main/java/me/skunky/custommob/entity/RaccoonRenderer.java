package me.skunky.custommob.entity;


import me.skunky.custommob.CustomMob;
import net.minecraft.client.render.entity.EntityRendererFactory;
import net.minecraft.util.Identifier;
import software.bernie.geckolib3.renderers.geo.GeoEntityRenderer;

public class RaccoonRenderer extends GeoEntityRenderer<RaccoonEntity> {
    public RaccoonRenderer(EntityRendererFactory.Context ctx) {
        super(ctx, new RaccoonModel());
    }

    @Override
    public Identifier getTextureLocation(RaccoonEntity instance) {
        return new Identifier(CustomMob.MOD_ID, "textures/entity/raccoon/raccoon.png");
    }
}