.class Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$2;
.super Ljava/lang/Object;
.source "MobileNetworkTypeTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$2;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$2;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
