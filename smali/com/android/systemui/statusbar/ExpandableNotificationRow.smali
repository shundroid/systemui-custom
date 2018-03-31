.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Landroid/widget/FrameLayout;
.source "ExpandableNotificationRow.java"


# instance fields
.field private mExpandable:Z

.field private mRowHeight:I

.field private mUserDismissed:Z

.field private mUserExpanded:Z

.field private mUserLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public isExpandable()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0
.end method

.method public isUserDismissed()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserDismissed:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    return v0
.end method

.method public setExpandable(Z)V
    .locals 0
    .param p1, "expandable"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 54
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 82
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void

    .line 85
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setRowHeight(I)V
    .locals 0
    .param p1, "rowHeight"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowHeight:I

    .line 46
    return-void
.end method

.method public setUserDismissed(Z)V
    .locals 0
    .param p1, "userDismissed"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserDismissed:Z

    .line 78
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 0
    .param p1, "userExpanded"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 62
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 0
    .param p1, "userLocked"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 70
    return-void
.end method
