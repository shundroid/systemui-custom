.class Lcom/android/systemui/quicksettings/AlarmTile$1;
.super Ljava/lang/Object;
.source "AlarmTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/AlarmTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/AlarmTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/AlarmTile;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/quicksettings/AlarmTile$1;->this$0:Lcom/android/systemui/quicksettings/AlarmTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile$1;->this$0:Lcom/android/systemui/quicksettings/AlarmTile;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/AlarmTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
