.class Lcom/android/systemui/quicksettings/EqualizerTile$4;
.super Ljava/lang/Object;
.source "EqualizerTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/EqualizerTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/EqualizerTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/EqualizerTile;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/systemui/quicksettings/EqualizerTile$4;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$4;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/EqualizerTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method
