.class Lcom/android/systemui/quicksettings/NfcTile$1;
.super Ljava/lang/Object;
.source "NfcTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/NfcTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/NfcTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/NfcTile;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/quicksettings/NfcTile$1;->this$0:Lcom/android/systemui/quicksettings/NfcTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile$1;->this$0:Lcom/android/systemui/quicksettings/NfcTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/NfcTile;->toggleState()V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile$1;->this$0:Lcom/android/systemui/quicksettings/NfcTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/NfcTile;->updateResources()V

    .line 40
    return-void
.end method
