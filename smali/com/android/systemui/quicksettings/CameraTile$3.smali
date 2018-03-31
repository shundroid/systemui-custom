.class Lcom/android/systemui/quicksettings/CameraTile$3;
.super Ljava/lang/Object;
.source "CameraTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/CameraTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/CameraTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/CameraTile;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0, v2}, Lcom/android/systemui/quicksettings/CameraTile;->access$102(Lcom/android/systemui/quicksettings/CameraTile;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1102(Lcom/android/systemui/quicksettings/CameraTile;Z)Z

    .line 233
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$300(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;->disable()V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$800(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$900(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/TextureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1000(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$900(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$900(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$3;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0, v2}, Lcom/android/systemui/quicksettings/CameraTile;->access$902(Lcom/android/systemui/quicksettings/CameraTile;Landroid/view/TextureView;)Landroid/view/TextureView;

    goto :goto_0
.end method
