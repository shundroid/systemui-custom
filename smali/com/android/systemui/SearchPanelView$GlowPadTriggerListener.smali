.class Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadTriggerListener"
.end annotation


# instance fields
.field mWaitingForLaunch:Z

.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 106
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 100
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    const/4 v8, 0x1

    .line 109
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v4

    .line 110
    .local v4, "resId":I
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v7}, Lcom/android/systemui/SearchPanelView;->access$300(Lcom/android/systemui/SearchPanelView;)I

    move-result v7

    sub-int v7, p2, v7

    aget-object v0, v6, v7

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string v6, "assist"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 112
    .local v1, "isAssist":Z
    const/4 v2, 0x0

    .line 114
    .local v2, "options":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 115
    iput-boolean v8, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    .line 116
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6}, Lcom/android/systemui/SearchPanelView;->access$400(Lcom/android/systemui/SearchPanelView;)V

    .line 117
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v6

    if-nez v6, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    .line 121
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6}, Lcom/android/systemui/SearchPanelView;->access$500(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050010

    const v8, 0x7f050011

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v9}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6, v7, v8, v9, v10}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 124
    .local v3, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 127
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v6}, Lcom/android/systemui/SearchPanelView;->access$600(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/cm/ActionTarget;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v7}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v8}, Lcom/android/systemui/SearchPanelView;->access$300(Lcom/android/systemui/SearchPanelView;)I

    move-result v8

    sub-int v8, p2, v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v2}, Lcom/android/systemui/cm/ActionTarget;->launchAction(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v5

    .line 129
    .local v5, "result":Z
    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    .line 130
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto :goto_0
.end method
