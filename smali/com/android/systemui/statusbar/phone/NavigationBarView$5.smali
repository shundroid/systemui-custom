.class Lcom/android/systemui/statusbar/phone/NavigationBarView$5;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 934
    const-string v0, "android.intent.action.SET_KEYGUARD_APPLICATION_WIDGET_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v1, "android.intent.extra.EXTRA_KEYGUARD_APPLICATION_WIDGET_PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1002(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/String;)Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v1, "android.intent.extra.EXTRA_KEYGUARD_APPLICATION_WIDGET_ICON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1102(Lcom/android/systemui/statusbar/phone/NavigationBarView;[B)[B

    .line 940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const-string v0, "android.intent.action.UNSET_KEYGUARD_APPLICATION_WIDGET_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1002(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/String;)Ljava/lang/String;

    .line 944
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1102(Lcom/android/systemui/statusbar/phone/NavigationBarView;[B)[B

    .line 946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    goto :goto_0
.end method
