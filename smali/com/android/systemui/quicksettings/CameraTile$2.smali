.class Lcom/android/systemui/quicksettings/CameraTile$2;
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
    .line 156
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1100(Lcom/android/systemui/quicksettings/CameraTile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1300(Lcom/android/systemui/quicksettings/CameraTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0, v2}, Lcom/android/systemui/quicksettings/CameraTile;->access$1302(Lcom/android/systemui/quicksettings/CameraTile;Z)Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/quicksettings/CameraTile$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/CameraTile$2$1;-><init>(Lcom/android/systemui/quicksettings/CameraTile$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v2, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v2, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v2}, Lcom/android/systemui/quicksettings/CameraTile;->access$1600(Lcom/android/systemui/quicksettings/CameraTile;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1502(Lcom/android/systemui/quicksettings/CameraTile;I)I

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1500(Lcom/android/systemui/quicksettings/CameraTile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/systemui/quicksettings/CameraTile$2$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/quicksettings/CameraTile$2$2;-><init>(Lcom/android/systemui/quicksettings/CameraTile$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v2, p0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v2}, Lcom/android/systemui/quicksettings/CameraTile;->access$1600(Lcom/android/systemui/quicksettings/CameraTile;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1502(Lcom/android/systemui/quicksettings/CameraTile;I)I

    goto :goto_1
.end method
