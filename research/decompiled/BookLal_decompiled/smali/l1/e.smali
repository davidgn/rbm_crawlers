.class public final Ll1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/j;


# instance fields
.field public final synthetic a:I

.field public final b:Ll1/o;


# direct methods
.method public synthetic constructor <init>(Ll1/o;I)V
    .locals 0

    iput p2, p0, Ll1/e;->a:I

    iput-object p1, p0, Ll1/e;->b:Ll1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lb1/h;)Z
    .locals 0

    iget p2, p0, Ll1/e;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILb1/h;)Le1/A;
    .locals 7

    iget v0, p0, Ll1/e;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance v1, LJ2/e;

    iget-object v0, p0, Ll1/e;->b:Ll1/o;

    iget-object v2, v0, Ll1/o;->d:Ljava/util/ArrayList;

    iget-object v3, v0, Ll1/o;->c:Lf1/f;

    invoke-direct {v1, p1, v2, v3}, LJ2/e;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lf1/f;)V

    sget-object v5, Ll1/o;->j:Ld3/a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ll1/o;->a(LJ2/e;IILb1/h;Ll1/n;)Ll1/c;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    sget v0, Ly1/b;->a:I

    new-instance v0, Ly1/a;

    invoke-direct {v0, p1}, Ly1/a;-><init>(Ljava/nio/ByteBuffer;)V

    sget-object v6, Ll1/o;->j:Ld3/a;

    iget-object v1, p0, Ll1/e;->b:Ll1/o;

    new-instance v2, LJ2/e;

    iget-object p1, v1, Ll1/o;->d:Ljava/util/ArrayList;

    iget-object v3, v1, Ll1/o;->c:Lf1/f;

    invoke-direct {v2, v3, v0, p1}, LJ2/e;-><init>(Lf1/f;Ljava/io/InputStream;Ljava/util/ArrayList;)V

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Ll1/o;->a(LJ2/e;IILb1/h;Ll1/n;)Ll1/c;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
