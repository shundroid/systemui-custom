.class Lcom/android/systemui/quicksettings/RemoteDisplayTile$2;
.super Ljava/lang/Object;
.source "RemoteDisplayTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/RemoteDisplayTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$2;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$2;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    const-string v1, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 72
    return-void
.end method
