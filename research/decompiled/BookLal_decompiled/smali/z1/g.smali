.class public abstract Lz1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/g;->a:Lz1/a;

    return-void
.end method

.method public static a(ILz1/d;)LJ2/e;
    .locals 3

    new-instance v0, LL/d;

    invoke-direct {v0, p0}, LL/d;-><init>(I)V

    sget-object p0, Lz1/g;->a:Lz1/a;

    new-instance v1, LJ2/e;

    const/16 v2, 0x1b

    invoke-direct {v1, v0, p1, p0, v2}, LJ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v1
.end method
