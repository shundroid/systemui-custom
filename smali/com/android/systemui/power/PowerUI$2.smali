.class Lcom/android/systemui/power/PowerUI$2;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object p2, p0, Lcom/android/systemui/power/PowerUI$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$2;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 250
    return-void
.end method
