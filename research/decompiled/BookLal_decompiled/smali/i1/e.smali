.class public final Li1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/e;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Li1/e;->a:I

    iput-object p1, p0, Li1/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 0

    return-void
.end method

.method private final f()V
    .locals 0

    return-void
.end method

.method private final g()V
    .locals 0

    return-void
.end method

.method private final h()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget v0, p0, Li1/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li1/e;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Li1/e;->a:I

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget v0, p0, Li1/e;->a:I

    return-void
.end method

.method public final d(Lcom/bumptech/glide/d;Lc1/d;)V
    .locals 2

    iget p1, p0, Li1/e;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Li1/e;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lc1/d;->f(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Li1/e;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Ly1/b;->a(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, Lc1/d;->f(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ByteBufferFileLoader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to obtain ByteBuffer for file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p1}, Lc1/d;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lb1/a;
    .locals 1

    iget v0, p0, Li1/e;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lb1/a;->a:Lb1/a;

    return-object v0

    :pswitch_0
    sget-object v0, Lb1/a;->a:Lb1/a;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
