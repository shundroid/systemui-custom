.class Lcom/android/systemui/quicksettings/WifiAPTile$1;
.super Ljava/lang/Object;
.source "WifiAPTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/WifiAPTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/WifiAPTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/WifiAPTile;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/quicksettings/WifiAPTile$1;->this$0:Lcom/android/systemui/quicksettings/WifiAPTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile$1;->this$0:Lcom/android/systemui/quicksettings/WifiAPTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/WifiAPTile;->access$000(Lcom/android/systemui/quicksettings/WifiAPTile;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile$1;->this$0:Lcom/android/systemui/quicksettings/WifiAPTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/WifiAPTile;->access$100(Lcom/android/systemui/quicksettings/WifiAPTile;Z)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile$1;->this$0:Lcom/android/systemui/quicksettings/WifiAPTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/WifiAPTile;->access$100(Lcom/android/systemui/quicksettings/WifiAPTile;Z)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
