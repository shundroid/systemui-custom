.class Lcom/android/systemui/cm/ActionTarget$4;
.super Ljava/lang/Object;
.source "ActionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ActionTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ActionTarget;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ActionTarget;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget$4;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$4;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$200(Lcom/android/systemui/cm/ActionTarget;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$4;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$4;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$100(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget$4;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-static {v2}, Lcom/android/systemui/cm/ActionTarget;->access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$4;->this$0:Lcom/android/systemui/cm/ActionTarget;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/cm/ActionTarget;->access$302(Lcom/android/systemui/cm/ActionTarget;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 300
    :cond_0
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
