.class public final synthetic LY0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;I)V
    .locals 0

    iput p2, p0, LY0/i0;->a:I

    iput-object p1, p0, LY0/i0;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MainActivityTAG"

    iget-object v1, p0, LY0/i0;->b:Landroid/app/ProgressDialog;

    iget v2, p0, LY0/i0;->a:I

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const-string v1, "Firestore error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_0
    sget-object v2, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const-string v1, "Error creating user"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
