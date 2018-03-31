.class Lcom/android/systemui/quicksettings/CameraTile$5;
.super Ljava/lang/Object;
.source "CameraTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/CameraTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
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
    .line 263
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$5;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$5;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$5;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/quicksettings/CameraTile$5;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v2}, Lcom/android/systemui/quicksettings/CameraTile;->access$2000(Lcom/android/systemui/quicksettings/CameraTile;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$5;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/quicksettings/CameraTile$5$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/quicksettings/CameraTile$5$1;-><init>(Lcom/android/systemui/quicksettings/CameraTile$5;Landroid/content/Intent;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 279
    :cond_0
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$5;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/CameraTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
