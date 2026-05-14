.class public final LN0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LN0/g;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/g;->d:Ljava/lang/Object;

    iput-object p2, p0, LN0/g;->c:Ljava/lang/Object;

    iput p3, p0, LN0/g;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, LN0/g;->a:I

    iput-object p1, p0, LN0/g;->c:Ljava/lang/Object;

    iput-object p4, p0, LN0/g;->d:Ljava/lang/Object;

    iput p2, p0, LN0/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILandroid/os/Parcelable;I)V
    .locals 0

    .line 2
    iput p4, p0, LN0/g;->a:I

    iput-object p1, p0, LN0/g;->d:Ljava/lang/Object;

    iput p2, p0, LN0/g;->b:I

    iput-object p3, p0, LN0/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LN0/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/g;->d:Ljava/lang/Object;

    check-cast v0, Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget v1, p0, LN0/g;->b:I

    iget-object v2, p0, LN0/g;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lp/a;->onNavigationEvent(ILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LN0/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v1, p0, LN0/g;->b:I

    iget-object v2, p0, LN0/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, LN0/g;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    iget v1, p0, LN0/g;->b:I

    iget-object v2, p0, LN0/g;->c:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, LN0/g;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    iget v1, p0, LN0/g;->b:I

    iget-object v2, p0, LN0/g;->c:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LN0/g;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v1, p0, LN0/g;->b:I

    iget-object v2, p0, LN0/g;->c:Ljava/lang/Object;

    check-cast v2, LN0/h;

    invoke-virtual {v2, v1, v0}, LN0/h;->a(ILandroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
