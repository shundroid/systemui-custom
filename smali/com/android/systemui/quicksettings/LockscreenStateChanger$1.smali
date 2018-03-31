.class Lcom/android/systemui/quicksettings/LockscreenStateChanger$1;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenStateChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/LockscreenStateChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/LockscreenStateChanger;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/LockscreenStateChanger;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger$1;->this$0:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger$1;->this$0:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    invoke-static {v0, p2}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->access$000(Lcom/android/systemui/quicksettings/LockscreenStateChanger;Landroid/content/Intent;)V

    .line 62
    return-void
.end method
