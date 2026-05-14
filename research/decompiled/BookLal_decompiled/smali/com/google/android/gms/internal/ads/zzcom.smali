.class final Lcom/google/android/gms/internal/ads/zzcom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfga;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzb:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzc:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzd:Lcom/google/android/gms/internal/ads/zzimd;

.field final zze:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzf:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcoc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzj:Lcom/google/android/gms/internal/ads/zzcoc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzg:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzi:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzilv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzilu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzilv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzilu;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzp:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzesi;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzesi;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzesn;->zza()Lcom/google/android/gms/internal/ads/zzesn;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhe;->zza()Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcom;->zze:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzaf:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkf;->zza()Lcom/google/android/gms/internal/ads/zzfkf;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzffy;->zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzffy;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzf:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzerl;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzf:Lcom/google/android/gms/internal/ads/zzimd;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzerl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzesh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzj:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoc;->zzp:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoc;->zzI()Lcom/google/android/gms/internal/ads/zzcmq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnn;->zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdyq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzg:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzi:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzerl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzesh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdyq;)V

    return-object v9
.end method
