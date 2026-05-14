.class public final Lc1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc1/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 2

    iget v0, p0, Lc1/h;->a:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0

    :pswitch_0
    const-class v0, Landroid/os/ParcelFileDescriptor;

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Lc1/g;
    .locals 2

    iget v0, p0, Lc1/h;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance v0, Ll1/h;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ll1/h;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object v0

    :pswitch_0
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance v0, Lc1/i;

    invoke-direct {v0, p1}, Lc1/i;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lc1/i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc1/i;-><init>(Ljava/lang/Object;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
