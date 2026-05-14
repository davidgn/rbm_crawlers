.class final Lcom/google/android/gms/internal/ads/zzgng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgma;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgkd;

.field private final zzb:Ljava/util/concurrent/ExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgph;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgkd;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgng;->zza:Lcom/google/android/gms/internal/ads/zzgkd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzb:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzc:Lcom/google/android/gms/internal/ads/zzgph;

    return-void
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()LN2/o;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgnf;-><init>(Lcom/google/android/gms/internal/ads/zzgng;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzc:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x3bc6

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgeu;[B[B)LN2/o;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgne;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgne;-><init>(Lcom/google/android/gms/internal/ads/zzgng;Lcom/google/android/gms/internal/ads/zzgeu;[B[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzc:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 p3, 0x3bd9

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgeu;[B)LN2/o;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgnd;-><init>(Lcom/google/android/gms/internal/ads/zzgng;Lcom/google/android/gms/internal/ads/zzgeu;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzc:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x3bc9

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object p1
.end method

.method public final zze()LN2/o;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgnc;-><init>(Lcom/google/android/gms/internal/ads/zzgng;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgng;->zzc:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x3bd2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object v0
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/ads/zzgeu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgng;->zza:Lcom/google/android/gms/internal/ads/zzgkd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgkd;->zzc(I)Lcom/google/android/gms/internal/ads/zzgeu;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgeu;->zzg()Lcom/google/android/gms/internal/ads/zzgeu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfxq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgng;->zza:Lcom/google/android/gms/internal/ads/zzgkd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgkd;->zzb(I)Lcom/google/android/gms/internal/ads/zzfxq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgeu;[B)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgng;->zza:Lcom/google/android/gms/internal/ads/zzgkd;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgkd;->zza(Lcom/google/android/gms/internal/ads/zzgeu;[B[B)Z

    return-object v1
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzgeu;[B[B)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgng;->zza:Lcom/google/android/gms/internal/ads/zzgkd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgkd;->zza(Lcom/google/android/gms/internal/ads/zzgeu;[B[B)Z

    const/4 p1, 0x0

    return-object p1
.end method
