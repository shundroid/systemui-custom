.class Lcom/android/systemui/quicksettings/BatteryTile$1;
.super Ljava/lang/Object;
.source "BatteryTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/BatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/BatteryTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/BatteryTile;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/systemui/quicksettings/BatteryTile$1;->this$0:Lcom/android/systemui/quicksettings/BatteryTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile$1;->this$0:Lcom/android/systemui/quicksettings/BatteryTile;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/BatteryTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 55
    return-void
.end method
