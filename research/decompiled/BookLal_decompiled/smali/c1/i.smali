.class public final Lc1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g;


# static fields
.field public static final c:Lc1/h;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc1/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc1/h;-><init>(I)V

    sput-object v0, Lc1/i;->c:Lc1/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc1/i;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lc1/i;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lc1/i;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lc1/i;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lc1/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lf1/f;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc1/i;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ll1/v;

    invoke-direct {v0, p1, p2}, Ll1/v;-><init>(Ljava/io/InputStream;Lf1/f;)V

    iput-object v0, p0, Lc1/i;->b:Ljava/lang/Object;

    const/high16 p1, 0x500000

    .line 6
    invoke-virtual {v0, p1}, Ll1/v;->mark(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc1/i;->a:I

    iput-object p1, p0, Lc1/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 0

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc1/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v0, Ll1/v;

    invoke-virtual {v0}, Ll1/v;->reset()V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lc1/i;->b:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lc1/i;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v0, Ll1/v;

    invoke-virtual {v0}, Ll1/v;->release()V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Landroid/os/ParcelFileDescriptor;
    .locals 5

    iget-object v0, p0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v0, Lc1/i;

    iget-object v0, v0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
