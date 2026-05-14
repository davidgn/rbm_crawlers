.class public abstract Lv4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv4/h;

.field public static final b:I

.field public static final c:I

.field public static final d:LG3/b;

.field public static final e:LG3/b;

.field public static final f:LG3/b;

.field public static final g:LG3/b;

.field public static final h:LG3/b;

.field public static final i:LG3/b;

.field public static final j:LG3/b;

.field public static final k:LG3/b;

.field public static final l:LG3/b;

.field public static final m:LG3/b;

.field public static final n:LG3/b;

.field public static final o:LG3/b;

.field public static final p:LG3/b;

.field public static final q:LG3/b;

.field public static final r:LG3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lv4/h;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lv4/h;-><init>(JLv4/h;Lv4/b;I)V

    sput-object v6, Lv4/d;->a:Lv4/h;

    const-string v0, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v2, v3}, Ly4/a;->l(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lv4/d;->b:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v1, 0x2710

    invoke-static {v0, v1, v2, v2, v3}, Ly4/a;->l(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lv4/d;->c:I

    new-instance v0, LG3/b;

    const-string v1, "BUFFERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->d:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->e:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->f:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->g:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "POISONED"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->h:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->i:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->j:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->k:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->l:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->m:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->n:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->o:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->p:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->q:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/d;->r:LG3/b;

    return-void
.end method
