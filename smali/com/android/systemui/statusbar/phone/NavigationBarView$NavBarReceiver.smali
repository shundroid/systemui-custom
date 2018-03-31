.class public Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavBarReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 545
    const-string v2, "android.intent.action.NAVBAR_EDIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    const-string v2, "edit"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 547
    .local v0, "edit":Z
    const-string v2, "save"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 548
    .local v1, "save":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$602(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    .line 550
    if-eqz v0, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 552
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->setEditMode(Z)V

    .line 562
    .end local v0    # "edit":Z
    .end local v1    # "save":Z
    :cond_0
    :goto_0
    return-void

    .line 554
    .restart local v0    # "edit":Z
    .restart local v1    # "save":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 555
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->saveKeys()V

    .line 557
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->setEditMode(Z)V

    .line 558
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSettings()V

    goto :goto_0
.end method
