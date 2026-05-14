.class public abstract LJ4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ4/h;->a:LJ4/g;

    return-void
.end method


# virtual methods
.method public a(LJ4/o;LJ4/B;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(LJ4/w;)V
.end method
