.class public final Lcom/google/android/gms/internal/ads/zzgad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzimd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgad;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzgad;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgad;-><init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgad;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmv;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcmz;->zzc()Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "coroutineScopeProvider"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgab;->zza:Lcom/google/android/gms/internal/ads/zzgab;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgah;->zza()Lt4/u;

    move-result-object v8

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgac;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzgac;-><init>(Landroid/content/Context;)V

    sget-object v0, LZ3/p;->a:LZ3/p;

    const-string v1, "serializer"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scope"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lz2/e;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Lz2/e;-><init>(I)V

    new-instance v1, LX/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LX/b;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, LZ2/l;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v0, LX/F;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, LX/F;-><init>(Lk4/a;Lcom/google/android/gms/internal/ads/zzgab;Ljava/util/List;Lz2/e;Lt4/u;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzimc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
