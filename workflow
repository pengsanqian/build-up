Front-End workflow 
前端的工作流
前端工作需要完善的工作流，防止协作中的错误，增加产出的成功率


明确需求和功能
因为语言沟通确实存在“错位”问题，为了避免，需要“心妮”或产品助理帮助确认。
另外，为了双方沟通更明确，最好是一个任务一个TaskID，在openproject或jira上。需求文档或相关资料也请PMO上传。


分支工作流
拿到任务之后，需要新建分(下面有更详细说明)支，分支命名规则：开发人员-任务，例如git create -b paul-HLA master
如果是其他人，比如Blake新建了platform分支的开发任务git create -b paul-platform platform


任务本地开发完成后，需要自测
根据文档、设计稿，自己进行对照；


其它部门review
自测结束，请UI先review，然后是QA部门，最后产品验收


完成开发，提交PR： from ‘paul-platform’ to ‘platform’ ，或 ‘paul-HLA to ‘master’ 方便admin成员进行CodeReview



PR规则
提交PR时，需要写清本次开发的内容
## description
---英文内容---
## image
---图片内容---


分支操作&shell
公司目前的分支系统和规则如下：
无特殊说明，从master上拉取分支，开发dev完成可以进行提测，将代码放到staging分支，通知QA或UI进行Review，通过Review和PR后，将staging合并到production准备上线发版；和国内常用的test=>release一样。
如果多任务多人协作，那么以“类型-人名-任务名”做为规范，例如：dev/paul/feature01,staging/paul/feature01,staging/paul/feature02。这样提交PR，进行code-review。

clone 到本地git clone

切换分支或重置某文件git checkout

版本回退，可查询git log里的 HEAD^ git reset

解决冲突和提交

git pull && git merge branch && git push origin branch

如果多人协作的情况下，有多个PR，一旦发生不能自动merge的情况，需要RD自行merge 父级分支，比如你从master上拉取，那么就

git pull && git checkout your-branch && git merge master
