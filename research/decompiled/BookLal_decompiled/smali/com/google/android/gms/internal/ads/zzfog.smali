.class public final Lcom/google/android/gms/internal/ads/zzfog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfoh;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/lang/String;

.field private final zzd:LN2/o;

.field private final zze:Ljava/util/List;

.field private final zzf:LN2/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:LN2/o;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:LN2/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;[B)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:LN2/o;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:LN2/o;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;)V

    return-object v7
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfof;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfof;-><init>(Lcom/google/android/gms/internal/ads/zzfnp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zze()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzd(Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:LN2/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:LN2/o;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;)V

    return-object v7
.end method

.method public final zze(LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoc;-><init>(LN2/o;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzd(Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfod;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfod;-><init>(Lcom/google/android/gms/internal/ads/zzfnp;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zze()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:LN2/o;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:LN2/o;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:Ljava/util/List;

    invoke-static {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzh(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    move-object v0, v7

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;)V

    return-object v7
.end method

.method public final zzh(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:LN2/o;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:LN2/o;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:Ljava/util/List;

    invoke-static {v2, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzi(LN2/o;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LN2/o;

    move-result-object p1

    move-object v0, v7

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;)V

    return-object v7
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfnw;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:LN2/o;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfnw;-><init>(Ljava/lang/Object;Ljava/lang/String;LN2/o;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg()Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfoi;->zza(Lcom/google/android/gms/internal/ads/zzfnw;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:LN2/o;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfoe;-><init>(Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzfnw;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-interface {v1, v2, v3}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfob;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfob;-><init>(Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzfnw;)V

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zza(Ljava/lang/Object;LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    return-object p1
.end method
