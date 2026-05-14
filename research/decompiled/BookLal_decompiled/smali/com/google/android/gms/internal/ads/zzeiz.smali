.class public final Lcom/google/android/gms/internal/ads/zzeiz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbgu;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeie;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzeie;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zza:Lcom/google/android/gms/internal/ads/zzbgu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zzc:Lcom/google/android/gms/internal/ads/zzeie;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zzc:Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeiy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeiy;-><init>(Lcom/google/android/gms/internal/ads/zzeiz;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;->zza(Lcom/google/android/gms/internal/ads/zzfnp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Error in offline signals database startup: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzb(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeiz;->zzb:Landroid/content/Context;

    const-string v2, "OfflineUpload.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "serialized_proto_data"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "offline_signal_contents"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;->zzk([B)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzids; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Unable to deserialize proto from offline signals database:"

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeiz;->zzb:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzB()Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzeit;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzo(I)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzj(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzeit;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzs(I)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    const/4 v3, 0x3

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzeit;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzQ(I)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzw(J)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    const/4 v3, 0x2

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzeit;->zzd(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;->zzM(J)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    move v7, v0

    move-wide v8, v5

    :goto_1
    if-ge v7, v4, :cond_3

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;->zzf()Lcom/google/android/gms/internal/ads/zzbha$zzq;

    move-result-object v15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    if-ne v15, v0, :cond_2

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;->zzb()J

    move-result-wide v15

    cmp-long v0, v15, v8

    if-lez v0, :cond_2

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;->zzb()J

    move-result-wide v8

    :cond_2
    add-int/2addr v7, v11

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    cmp-long v0, v8, v5

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "statistic_name = \'last_successful_request_time\'"

    const-string v5, "offline_signal_statistics"

    invoke-virtual {v10, v5, v0, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeiz;->zza:Lcom/google/android/gms/internal/ads/zzbgu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeiw;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzeiw;-><init>(Lcom/google/android/gms/internal/ads/zzbha$zzaf;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbgu;->zzb(Lcom/google/android/gms/internal/ads/zzbgt;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeiz;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzar;->zzs()Lcom/google/android/gms/internal/ads/zzbha$zzar$zza;

    move-result-object v4

    iget v5, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbha$zzar$zza;->zzc(I)Lcom/google/android/gms/internal/ads/zzbha$zzar$zza;

    iget v5, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbha$zzar$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbha$zzar$zza;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    if-eq v11, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbha$zzar$zza;->zzk(I)Lcom/google/android/gms/internal/ads/zzbha$zzar$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbha$zzar;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeix;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzeix;-><init>(Lcom/google/android/gms/internal/ads/zzbha$zzar;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbgu;->zzb(Lcom/google/android/gms/internal/ads/zzbgt;)V

    const/16 v2, 0x2714

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbgu;->zzc(I)V

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzeit;->zzb(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_3
    return-object v12
.end method
