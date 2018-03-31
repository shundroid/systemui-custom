.class Lcom/android/systemui/quicksettings/ThemesTile$1;
.super Ljava/lang/Object;
.source "ThemesTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ThemesTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ThemesTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ThemesTile;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ThemesTile$1;->this$0:Lcom/android/systemui/quicksettings/ThemesTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cyanogenmod.intent.category.APP_THEMES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ThemesTile$1;->this$0:Lcom/android/systemui/quicksettings/ThemesTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/ThemesTile;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 41
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ThemesTile$1;->this$0:Lcom/android/systemui/quicksettings/ThemesTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/ThemesTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 42
    return-void
.end method
