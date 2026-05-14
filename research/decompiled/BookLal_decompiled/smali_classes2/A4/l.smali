.class public final LA4/l;
.super Lt4/s;
.source "SourceFile"


# static fields
.field public static final c:LA4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LA4/l;

    invoke-direct {v0}, Lt4/s;-><init>()V

    sput-object v0, LA4/l;->c:LA4/l;

    return-void
.end method


# virtual methods
.method public final q(Lb4/h;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, LA4/e;->d:LA4/e;

    sget-object v0, LA4/k;->h:Landroidx/work/n;

    iget-object p1, p1, LA4/h;->c:LA4/c;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, LA4/c;->c(Ljava/lang/Runnable;Landroidx/work/n;Z)V

    return-void
.end method
