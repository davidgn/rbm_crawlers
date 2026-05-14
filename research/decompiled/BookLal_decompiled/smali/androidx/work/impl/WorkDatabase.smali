.class public abstract Landroidx/work/impl/WorkDatabase;
.super Lv0/h;
.source "SourceFile"


# static fields
.field public static final j:J

.field public static final synthetic k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv0/h;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract i()LD2/e;
.end method

.method public abstract j()LD2/e;
.end method

.method public abstract k()LJ2/e;
.end method

.method public abstract l()LD2/e;
.end method

.method public abstract m()LR0/i;
.end method

.method public abstract n()LT0/j;
.end method

.method public abstract o()LD2/e;
.end method
