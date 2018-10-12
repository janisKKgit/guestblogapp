<div class="modal-header">
    <h3 class="modal-title">New entry</h3>
</div>
<div class="modal-body">
    <fieldset>
        <div class="form-group " error-aware>
            <label class="label-align control-label required" for="username">Username</label>
            <div class="input-align">
                <input id="username" name="username" ng-model="cntrlr.model.username"
                       type="text" class="form-control input-md" required autofocus>
                <div ng-if="cntrlr.errors.username" class="alert alert-danger" role="alert" ng-bind="cntrlr.errors.username[0]"></div>
            </div>
        </div>
        <div class="form-group required" error-aware>
            <label class="label-align control-label" for="email">Email</label>
            <div class="input-align">
                <input id="email" name="email" ng-model="cntrlr.model.email"
                       type="text" class="form-control input-md"
                       placeholder="example@example.com" required>
                <div ng-if="cntrlr.errors.email" class="alert alert-danger" role="alert" ng-bind="cntrlr.errors.email[0]"></div>
            </div>
        </div>
        <div class="form-group required" error-aware>
            <label class="label-align control-label" for="website">Website</label>
            <div class="input-align">
                <input id="website" name="website" ng-model="cntrlr.model.website"
                       type="text" class="form-control input-md" ng-init="cntrlr.model.website=''"
                       placeholder="http://www.example.com" required autofocus>
                <div ng-if="cntrlr.errors.website && cntrlr.model.website !== ''" class="alert alert-danger" role="alert" ng-bind="cntrlr.errors.website[0]"></div>
            </div>
        </div>
        <div class="form-group required" error-aware>
            <label class="label-align control-label" for="file">Upload: @{{cntrlr.model.file.name}}</label>
            <div class="input-align">
                <button class="btn btn-primary btn-block" ngf-select ng-model="cntrlr.model.file" name="file" ngf-pattern="'image/*'"
                        ngf-accept="'image/*'" ngf-max-size="5MB" ngf-min-height="100"
                        ngf-resize="{width: 100, height: 100}">Select</button>
            </div>
        </div>
        <div class="form-group required" error-aware>
            <label class="label-align control-label required='true'" for="name">Message</label>
            <div class="input-align">
                <textarea id="message" style=" resize: none;" rows="4" name="message" ng-model="cntrlr.model.message"
                          type="text" class="form-control input-md" required>
                </textarea>
                <div ng-if="cntrlr.errors.message" class="alert alert-danger" role="alert" ng-bind="cntrlr.errors.message[0]"></div>
            </div>
        </div>
        <div id="reCaptcha" style="margin:0 auto;" ></div>
        <div ng-if="cntrlr.errors.captcha" class="alert alert-danger" role="alert" ng-bind="cntrlr.errors.captcha[0]"></div>
    </fieldset>

</div>
<div class="modal-footer">
    <button class="btn btn-primary" ng-click="cntrlr.ok()">Save</button>
    <button class="btn btn-outline" ng-click="cntrlr.cancel()">Cancel</button>
</div>
