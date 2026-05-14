.class public final Lq1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/a;


# static fields
.field public static final b:Lq1/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/c;-><init>(I)V

    sput-object v0, Lq1/c;->b:Lq1/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq1/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Le1/A;Lb1/h;)Le1/A;
    .locals 4

    iget p2, p0, Lq1/c;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-interface {p1}, Le1/A;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp1/c;

    iget-object p1, p1, Lp1/c;->a:Lp1/b;

    iget-object p1, p1, Lp1/b;->a:Lp1/g;

    iget-object p1, p1, Lp1/g;->a:La1/d;

    iget-object p1, p1, La1/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, Ll1/y;

    sget v0, Ly1/b;->a:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LJ4/y;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LJ4/y;->c:Ljava/lang/Object;

    iput v2, v0, LJ4/y;->a:I

    iput v3, v0, LJ4/y;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, LJ4/y;->a:I

    if-nez v1, :cond_1

    iget-object v1, v0, LJ4/y;->c:Ljava/lang/Object;

    check-cast v1, [B

    array-length v1, v1

    iget v0, v0, LJ4/y;->b:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p1, v0

    :goto_1
    invoke-direct {p2, p1}, Ll1/y;-><init>([B)V

    return-object p2

    :pswitch_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
