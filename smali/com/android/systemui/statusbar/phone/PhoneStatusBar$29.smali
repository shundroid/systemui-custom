.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityOnStart(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->val$vis:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->val$vis:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2049
    return-void
.end method
