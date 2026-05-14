.class public final Lj3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/o;
.implements Lj3/e0;
.implements Lj3/p0;
.implements Lj3/b0;


# static fields
.field public static final b:Lj3/n;

.field public static final c:[B


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/n;-><init>(I)V

    sput-object v0, Lj3/n;->b:Lj3/n;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lj3/n;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj3/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSession;)V
    .locals 5

    const/4 v0, 0x4

    iput v0, p0, Lj3/n;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    aget-object v0, v0, v1

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    aget-object p1, v0, v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Lj3/F;->d:Ljava/util/logging/Logger;

    .line 9
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 10
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Peer cert not available for peerHost="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)[B
    .locals 10

    iget v0, p0, Lj3/n;->a:I

    packed-switch v0, :pswitch_data_0

    .line 2
    check-cast p1, Lj3/r0;

    .line 3
    iget-object p1, p1, Lj3/r0;->a:Lj3/q0;

    .line 4
    iget-object p1, p1, Lj3/q0;->b:[B

    return-object p1

    .line 5
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 6
    sget-object v0, LJ2/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 7
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 8
    aget-byte v2, p1, v1

    const/16 v3, 0x7e

    const/16 v4, 0x20

    const/16 v5, 0x25

    if-lt v2, v4, :cond_1

    if-ge v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    array-length v2, p1

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    if-eqz v1, :cond_2

    .line 10
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move v0, v1

    .line 11
    :goto_2
    array-length v6, p1

    if-ge v1, v6, :cond_5

    .line 12
    aget-byte v6, p1, v1

    if-lt v6, v4, :cond_4

    if-ge v6, v3, :cond_4

    if-ne v6, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v0, 0x1

    .line 13
    aput-byte v6, v2, v0

    move v0, v7

    goto :goto_4

    .line 14
    :cond_4
    :goto_3
    aput-byte v5, v2, v0

    add-int/lit8 v7, v0, 0x1

    .line 15
    sget-object v8, Lj3/n;->c:[B

    shr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-byte v9, v8, v9

    aput-byte v9, v2, v7

    add-int/lit8 v7, v0, 0x2

    and-int/lit8 v6, v6, 0xf

    .line 16
    aget-byte v6, v8, v6

    aput-byte v6, v2, v7

    add-int/lit8 v0, v0, 0x3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :cond_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lj3/n;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lj3/k0;

    invoke-virtual {p1}, Lj3/k0;->j()Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lj3/X;

    invoke-virtual {p1}, Lj3/X;->b()Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Lj3/T;

    invoke-virtual {p1}, Lj3/T;->c()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lj3/n;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lj3/k0;

    invoke-virtual {p1}, Lj3/k0;->k()I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lj3/X;

    invoke-virtual {p1}, Lj3/X;->c()I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Lj3/T;

    invoke-virtual {p1}, Lj3/T;->b()I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lj3/n;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "gzip"

    return-object v0

    :pswitch_0
    const-string v0, "identity"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public f(Ll3/h1;)Ljava/io/InputStream;
    .locals 1

    iget v0, p0, Lj3/n;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :pswitch_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g([B)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lj3/n;->a:I

    packed-switch v0, :pswitch_data_0

    array-length v0, p1

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    aget-byte v0, p1, v2

    if-ne v0, v1, :cond_0

    sget-object p1, Lj3/r0;->e:Lj3/r0;

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/16 v4, 0x39

    if-eq v0, v3, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v0, p1, v2

    if-lt v0, v1, :cond_5

    if-le v0, v4, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0xa

    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    aget-byte v2, p1, v2

    if-lt v2, v1, :cond_5

    if-le v2, v4, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    sget-object v0, Lj3/r0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj3/r0;

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/String;

    sget-object v1, LJ2/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "Unknown code "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lj3/r0;->g:Lj3/r0;

    invoke-virtual {v0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_a

    aget-byte v2, p1, v1

    const/16 v3, 0x20

    const/16 v4, 0x25

    if-lt v2, v3, :cond_7

    const/16 v3, 0x7e

    if-ge v2, v3, :cond_7

    if-ne v2, v4, :cond_6

    add-int/lit8 v2, v1, 0x2

    array-length v3, p1

    if-ge v2, v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    array-length v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move v2, v0

    :goto_5
    array-length v3, p1

    if-ge v2, v3, :cond_9

    aget-byte v3, p1, v2

    if-ne v3, v4, :cond_8

    add-int/lit8 v3, v2, 0x2

    array-length v5, p1

    if-ge v3, v5, :cond_8

    :try_start_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    sget-object v6, LJ2/c;->a:Ljava/nio/charset/Charset;

    const/4 v7, 0x2

    invoke-direct {v3, p1, v5, v7, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    :catch_0
    :cond_8
    aget-byte v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sget-object v3, LJ2/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BI)V

    move-object p1, v1

    :goto_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ll3/W0;)Ljava/io/OutputStream;
    .locals 1

    iget v0, p0, Lj3/n;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :pswitch_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
