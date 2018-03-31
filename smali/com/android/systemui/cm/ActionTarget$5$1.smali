.class Lcom/android/systemui/cm/ActionTarget$5$1;
.super Landroid/os/Handler;
.source "ActionTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cm/ActionTarget$5;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/cm/ActionTarget$5;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ActionTarget$5;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iput-object p3, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iget-object v0, v0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$200(Lcom/android/systemui/cm/ActionTarget;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iget-object v0, v0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iget-object v0, v0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$100(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iget-object v2, v2, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v2}, Lcom/android/systemui/cm/ActionTarget;->access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iget-object v0, v0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/cm/ActionTarget;->access$302(Lcom/android/systemui/cm/ActionTarget;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 329
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iget-object v0, v0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$400(Lcom/android/systemui/cm/ActionTarget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget$5$1;->this$1:Lcom/android/systemui/cm/ActionTarget$5;

    iget-object v2, v2, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    iget-object v2, v2, Lcom/android/systemui/cm/ActionTarget;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    :cond_0
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
