.class Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "CameraTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/CameraTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/CameraTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/quicksettings/CameraTile;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    .line 393
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 394
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    add-int/lit8 v1, p1, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1602(Lcom/android/systemui/quicksettings/CameraTile;I)I

    .line 403
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$600(Lcom/android/systemui/quicksettings/CameraTile;)V

    goto :goto_0
.end method
