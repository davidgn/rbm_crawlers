.class public abstract LB4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:LG3/b;

.field public static final c:LG3/b;

.field public static final d:LG3/b;

.field public static final e:LG3/b;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v2, v3}, Ly4/a;->l(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, LB4/j;->a:I

    new-instance v0, LG3/b;

    const-string v1, "PERMIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB4/j;->b:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1, v4}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB4/j;->c:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1, v4}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB4/j;->d:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v4}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB4/j;->e:LG3/b;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v1, 0x10

    invoke-static {v0, v1, v2, v2, v3}, Ly4/a;->l(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, LB4/j;->f:I

    return-void
.end method
