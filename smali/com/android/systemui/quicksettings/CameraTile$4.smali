.class Lcom/android/systemui/quicksettings/CameraTile$4;
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
    .line 243
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$4;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$4;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1100(Lcom/android/systemui/quicksettings/CameraTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$4;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/RuntimeException;
    const-class v1, Lcom/android/systemui/quicksettings/CameraTile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to autofocus"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
