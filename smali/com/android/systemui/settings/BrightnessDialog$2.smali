.class Lcom/android/systemui/settings/BrightnessDialog$2;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDialog$2;->this$0:Lcom/android/systemui/settings/BrightnessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.cyanogenmod.AutoBrightnessSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v1, 0x34800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog$2;->this$0:Lcom/android/systemui/settings/BrightnessDialog;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog$2;->this$0:Lcom/android/systemui/settings/BrightnessDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/settings/BrightnessDialog;->access$000(Lcom/android/systemui/settings/BrightnessDialog;I)V

    .line 99
    return-void
.end method
