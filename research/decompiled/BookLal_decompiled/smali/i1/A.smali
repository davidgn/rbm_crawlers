.class public final Li1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;
.implements Lb1/c;


# static fields
.field public static final b:Li1/A;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li1/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li1/A;-><init>(I)V

    sput-object v0, Li1/A;->b:Li1/A;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Li1/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 4

    const-string v0, "data:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";base64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a base64 image data URL."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing comma in data URL."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid image data URL."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    iget v0, p0, Li1/A;->a:I

    sparse-switch v0, :sswitch_data_0

    const-class v0, Ljava/io/InputStream;

    return-object v0

    :sswitch_0
    const-class v0, Landroid/os/ParcelFileDescriptor;

    return-object v0

    :sswitch_1
    const-class v0, Ljava/io/InputStream;

    return-object v0

    :sswitch_2
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public h(Li1/w;)Li1/q;
    .locals 3

    iget v0, p0, Li1/A;->a:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Li1/G;

    const-class v1, Li1/g;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    invoke-direct {v0, p1}, Li1/G;-><init>(Li1/q;)V

    return-object v0

    :sswitch_0
    new-instance v0, Li1/z;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li1/z;-><init>(Li1/q;I)V

    return-object v0

    :sswitch_1
    new-instance v0, Li1/z;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v2}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li1/z;-><init>(Li1/q;I)V

    return-object v0

    :sswitch_2
    new-instance v0, Li1/z;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li1/z;-><init>(Li1/q;I)V

    return-object v0

    :sswitch_3
    new-instance p1, Li1/B;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Li1/B;-><init>(I)V

    return-object p1

    :sswitch_4
    new-instance p1, Li1/d;

    new-instance v0, Li1/A;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Li1/A;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Li1/d;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :sswitch_5
    new-instance p1, Li1/d;

    new-instance v0, Li1/A;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li1/A;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Li1/d;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :sswitch_6
    sget-object p1, Li1/B;->b:Li1/B;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public m(Ljava/lang/Object;Ljava/io/File;Lb1/h;)Z
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-static {p1, p2}, Ly1/b;->b(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ByteBufferEncoder"

    const/4 p3, 0x3

    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Failed to write data"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
