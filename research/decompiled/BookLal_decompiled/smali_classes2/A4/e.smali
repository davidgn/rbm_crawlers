.class public final LA4/e;
.super LA4/h;
.source "SourceFile"


# static fields
.field public static final d:LA4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LA4/e;

    sget v2, LA4/k;->c:I

    sget v3, LA4/k;->d:I

    sget-wide v5, LA4/k;->e:J

    sget-object v4, LA4/k;->a:Ljava/lang/String;

    invoke-direct {v0}, Lt4/s;-><init>()V

    new-instance v7, LA4/c;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LA4/c;-><init>(IILjava/lang/String;J)V

    iput-object v7, v0, LA4/h;->c:LA4/c;

    sput-object v0, LA4/e;->d:LA4/e;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
