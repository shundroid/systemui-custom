.class Lcom/android/systemui/quicksettings/QuietHoursTile$2;
.super Ljava/lang/Object;
.source "QuietHoursTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/QuietHoursTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/QuietHoursTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/QuietHoursTile;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile$2;->this$0:Lcom/android/systemui/quicksettings/QuietHoursTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$QuietHoursSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile$2;->this$0:Lcom/android/systemui/quicksettings/QuietHoursTile;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 63
    const/4 v1, 0x1

    return v1
.end method
